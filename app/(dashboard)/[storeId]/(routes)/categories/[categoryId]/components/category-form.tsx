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
import { Billboard, Category } from "@prisma/client";
import {
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectLabel,
  SelectTrigger,
  SelectValue,
  Select,
} from "@/components/ui/select";
import axios from "axios";
import { Trash } from "lucide-react";
import { useParams, useRouter } from "next/navigation";
import React, { useState } from "react";
import { Controller, useForm } from "react-hook-form";
import toast from "react-hot-toast";
import { z } from "zod";

interface CategoryFormProps {
  inititalData: Category | null;
  billboards: Billboard[];
}

//validate form in userFrom hook
const formSchema = z.object({
  name: z.string().min(1),
  billboardId: z.string().min(1),
});

//get type of validate object (zod)
type CategoryFormValues = z.infer<typeof formSchema>;

//main class
const CategoryForm: React.FC<CategoryFormProps> = ({
  inititalData,
  billboards,
}) => {
  const params = useParams();
  const router = useRouter();
  const form = useForm<CategoryFormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: inititalData || {
      name: "",
      billboardId: "",
    },
  });

  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);

  const title = inititalData ? "Edit Category" : "Create Category";
  const description = inititalData ? "Edit a Category" : "Create a Category";
  const toastMessage = inititalData ? "Category updated" : "Category created";
  const action = inititalData ? "Save changes" : "Create";

  const onSubmit = async (data: CategoryFormValues) => {
    try {
      setLoading(true);
      if (inititalData) {
        await axios.patch(
          `/api/${params.storeId}/categories/${params.categoryId}`,
          data,
        );
      } else {
        await axios.post(`/api/${params.storeId}/categories`, data);
      }
      router.refresh();
      router.push(`/${params.storeId}/categories`);
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
        `api/${params.storeId}/categories/${params.categoryId}`,
      );
      router.refresh();
      router.push("/");
      toast.success("Delete successfully");
    } catch (err) {
      toast.error("");
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
          <div className="grid grid-cols-2 gap-96">
            <FormField
              name="name"
              control={form.control}
              render={({ field }) => (
                <FormItem className="">
                  <FormLabel>Category Name</FormLabel>
                  <FormControl>
                    <Input
                      disabled={loading}
                      placeholder="category lable"
                      {...field}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />
            <FormField
              name="billboardId"
              control={form.control}
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Billboard</FormLabel>
                  <Select
                    onValueChange={field.onChange}
                    value={field.value}
                    defaultValue={field.value}
                  >
                    <FormControl>
                      <SelectTrigger>
                        <SelectValue
                          defaultValue={field.value}
                          placeholder="Select Billboard"
                        />
                      </SelectTrigger>
                    </FormControl>
                    <SelectContent>
                      {billboards.map((billboard) => (
                        <SelectItem key={billboard.id} value={billboard.id}>
                          {billboard.label}
                        </SelectItem>
                      ))}
                    </SelectContent>
                  </Select>

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

export default CategoryForm;
