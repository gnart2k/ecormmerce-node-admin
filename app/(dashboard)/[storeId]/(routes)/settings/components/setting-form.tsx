import { Button } from "@/components/ui/button";
import { Heading } from "@/components/ui/heading";
import { Trash } from "lucide-react";
import Head from "next/head";
import React from "react";

function SettingForm() {
  return (
    <div className="flex items-center justify-between">
      <Heading title="Settings" description="manage store" />
      <Button>
        <Trash />
      </Button>
    </div>
  );
}

export default SettingForm;
