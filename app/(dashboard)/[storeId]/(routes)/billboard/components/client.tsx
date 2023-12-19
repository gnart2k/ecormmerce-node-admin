"use client";

import { Button } from "@/components/ui/button";
import { Heading } from "@/components/ui/heading";
import { Plus } from "lucide-react";
import { useParams, useRouter } from "next/navigation";

function BillboardClient() {
  const router = useRouter();
  const params = useParams();
  return (
    <div>
      <div className="flex items-center justify-between">
        <Heading
          title="Billboard"
          description="Manage billboards for your application"
        />

        <Button onClick={() => router.push(`/${params.storeId}/billboard/new`)}>
          <Plus className="mr-2 h-4 w-4" />
          <b>Add New</b>
        </Button>
      </div>
    </div>
  );
}

export default BillboardClient;
