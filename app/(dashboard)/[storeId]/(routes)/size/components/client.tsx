"use client";

import { Button } from "@/components/ui/button";
import { Heading } from "@/components/ui/heading";
import { Plus } from "lucide-react";
import { useParams, useRouter } from "next/navigation";
import { SizeCollumn, columns } from "./columns";
import { DataTable } from "@/components/ui/data-table";
import ApiList from "@/components/ui/api-list";
import { Separator } from "@/components/ui/separator";

interface SizeClientProps {
  data: SizeCollumn[];
}
const SizeClient: React.FC<SizeClientProps> = ({ data }) => {
  const router = useRouter();
  const params = useParams();
  return (
    <div>
      <div className="flex items-center justify-between">
        <Heading
          title={`Size (${data.length})`}
          description="Manage sizes for your application"
        />

        <Button onClick={() => router.push(`/${params.storeId}/size/new`)}>
          <Plus className="mr-2 h-4 w-4" />
          <b>Add New</b>
        </Button>
      </div>
      <Separator />
      <DataTable columns={columns} data={data} searchKey="name" />
      <Heading title="API" description="API calls" />
      <Separator />
      <ApiList entityName="size" entityIdName="sizeId" />
    </div>
  );
};

export default SizeClient;
