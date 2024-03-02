"use client";
import { AlertModal } from "@/components/modals/alert-modal";
import { Button } from "@/components/ui/button";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { Heading } from "@/components/ui/heading";
import ImageUpload from "@/components/ui/image-upload";
import { Input } from "@/components/ui/input";
import { Separator } from "@/components/ui/separator";
import { useOrigin } from "@/hooks/use-origin";
import { zodResolver } from "@hookform/resolvers/zod";
import { Size } from "@prisma/client";
import axios from "axios";
import { Trash } from "lucide-react";
import { useParams, useRouter } from "next/navigation";
import React, { useState } from "react";
import { Controller, useForm } from "react-hook-form";
import toast from "react-hot-toast";
import { z } from "zod";

interface SizeFormProps {
  inititalData: Size | null;
}

//validate form in userFrom hook
const formSchema = z.object({
  name: z.string().min(1),
  value: z.string().min(1),
});

//get type of validate object (zod)
type SizeFormValues = z.infer<typeof formSchema>;

//main class
const SizeForm: React.FC<SizeFormProps> = ({ inititalData }) => {
  const params = useParams();
  const router = useRouter();
  const form = useForm<SizeFormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: inititalData || {
      name: "",
      value: "",
    },
  });

  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);

  const title = inititalData ? "Edit size" : "Create size";
  const description = inititalData ? "Edit a size" : "Create a size";
  const toastMessage = inititalData ? "size updated" : "size created";
  const action = inititalData ? "Save changes" : "Create";

  const onSubmit = async (data: SizeFormValues) => {
    try {
      setLoading(true);
      if (inititalData) {
        await axios.patch(`/api/${params.storeId}/size/${params.sizeId}`, data);
      } else {
        await axios.post(`/api/${params.storeId}/size`, data);
      }
      router.refresh();
      router.push(`/${params.storeId}/size`);
      toast.success(toastMessage);
    } catch (err) {
      toast.error("Something went wrong");
    } finally {
      setLoading(false);
    }
  };

  const onDelete = async () => {
    try {
      setLoading(true);
      await axios.delete(`api/${params.storeId}/size/${params.sizeId}`);
      router.refresh();
      router.push("/");
      toast.success("Delete successfully");
    } catch (err) {
      toast.error("Make sure to removed all categories using this size first");
    } finally {
      setLoading(false);
      setOpen(false);
    }
  };
  return (
    <div>
      <AlertModal
        isOpen={open}
        onClose={() => setOpen(false)}
        onConfirm={() => onDelete()}
        loading={loading}
      />

      <div className="flex items-center justify-between">
        <Heading title={title} description={description} />
        {inititalData && (
          <Button
            disabled={loading}
            variant="destructive"
            size={"icon"}
            onClick={() => setOpen(true)}
          >
            <Trash className="h-4 w-4" />
          </Button>
        )}
      </div>
      <Separator className="mb-8" />
      <Form {...form}>
        <form
          onSubmit={form.handleSubmit(onSubmit)}
          className="space-y-8 w-full"
        >
          <div className="grid grid-cols-3 gap-8">
            <FormField
              name="name"
              control={form.control}
              render={({ field }) => (
                <FormItem className="">
                  <FormLabel>Name</FormLabel>
                  <FormControl>
                    <Input
                      disabled={loading}
                      placeholder="size name"
                      {...field}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />
          </div>
          <div className="grid grid-cols-3 gap-8">
            <FormField
              name="value"
              control={form.control}
              render={({ field }) => (
                <FormItem className="">
                  <FormLabel>Value</FormLabel>
                  <FormControl>
                    <Input disabled={loading} placeholder="value" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />
          </div>
          <Button disabled={loading} className="ml-auto" type="submit">
            {action}
          </Button>
        </form>
      </Form>
      <Separator className="my-8" />
    </div>
  );
};

export default SizeForm;
