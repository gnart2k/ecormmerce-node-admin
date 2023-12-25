"use client";

import { Button } from "@/components/ui/button";
import { Heading } from "@/components/ui/heading";
import { Plus } from "lucide-react";
import { useParams, useRouter } from "next/navigation";
import { BillboardCollumn, columns } from "./columns";
import { Separator } from "@radix-ui/react-separator";
import { DataTable } from "@/components/ui/data-table";

interface BillboardClientProps {
  data: BillboardCollumn[];
}
const BillboardClient: React.FC<BillboardClientProps> = ({ data }) => {
  const router = useRouter();
  const params = useParams();
  return (
    <div>
      <div className="flex items-center justify-between">
        <Heading
          title={`Billboard (${data.length})`}
          description="Manage billboards for your application"
        />

        <Button onClick={() => router.push(`/${params.storeId}/billboard/new`)}>
          <Plus className="mr-2 h-4 w-4" />
          <b>Add New</b>
        </Button>
      </div>
      <Separator />
      <DataTable columns={columns} data={data} searchKey="label" />
    </div>
  );
};

export default BillboardClient;
