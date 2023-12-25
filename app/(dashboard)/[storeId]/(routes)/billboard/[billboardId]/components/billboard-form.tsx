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
import { Billboard } from "@prisma/client";
import axios from "axios";
import { Trash } from "lucide-react";
import { useParams, useRouter } from "next/navigation";
import React, { useState } from "react";
import { Controller, useForm } from "react-hook-form";
import toast from "react-hot-toast";
import { z } from "zod";

interface BillboardFormProps {
  inititalData: Billboard | null;
}

//validate form in userFrom hook
const formSchema = z.object({
  label: z.string().min(1),
  imageUrl: z.string().min(1),
});

//get type of validate object (zod)
type BillboardFormValues = z.infer<typeof formSchema>;

//main class
const BillboardForm: React.FC<BillboardFormProps> = ({ inititalData }) => {
  const params = useParams();
  const router = useRouter();
  const form = useForm<BillboardFormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: inititalData || {
      label: "",
      imageUrl: "",
    },
  });

  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);

  const title = inititalData ? "Edit billboard" : "Create Billboard";
  const description = inititalData ? "Edit a billboard" : "Create a billboard";
  const toastMessage = inititalData ? "Billboard updated" : "Billboard created";
  const action = inititalData ? "Save changes" : "Create";

  const onSubmit = async (data: BillboardFormValues) => {
    try {
      setLoading(true);
      if (inititalData) {
        await axios.patch(
          `/api/${params.storeId}/billboard/${params.billboardId}`,
          data,
        );
      } else {
        await axios.post(`/api/${params.storeId}/billboard`, data);
      }
      router.refresh();
      router.push(`/${params.storeId}/billboard`);
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
      await axios.delete(
        `api/${params.storeId}/billboard/${params.billboardId}`,
      );
      router.refresh();
      router.push("/");
      toast.success("Delete successfully");
    } catch (err) {
      toast.error(
        "Make sure to removed all categories using this billboard first",
      );
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
              name="label"
              control={form.control}
              render={({ field }) => (
                <FormItem className="">
                  <FormLabel>Lable</FormLabel>
                  <FormControl>
                    <Input
                      disabled={loading}
                      placeholder="billboard lable"
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
              name="imageUrl"
              control={form.control}
              render={({ field }) => (
                <FormItem className="">
                  <FormLabel>Image Upload</FormLabel>
                  <FormControl>
                    <ImageUpload
                      value={field.value ? [field.value] : []}
                      disabled={loading}
                      onChange={(url) => field.onChange(url)}
                      onRemove={() => field.onChange("")}
                    />
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

export default BillboardForm;
