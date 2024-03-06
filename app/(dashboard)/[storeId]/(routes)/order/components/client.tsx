"use client";

import { Heading } from "@/components/ui/heading";
import { OrderCollumn, columns } from "./columns";
import { DataTable } from "@/components/ui/data-table";
import { Separator } from "@/components/ui/separator";

interface OrderProps {
  data: OrderCollumn[];
}
const OrderClient: React.FC<OrderProps> = ({ data }) => {
  return (
    <div>
      <div className="flex items-center justify-between">
        <Heading
          title={`Order (${data.length})`}
          description="Manage order for your application"
        />
      </div>
      <Separator />
      <DataTable columns={columns} data={data} searchKey="product" />
      <Separator />
    </div>
  );
};

export default OrderClient;
