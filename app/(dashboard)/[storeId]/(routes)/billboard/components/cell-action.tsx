"use client";
import React from "react";
import { BillboardCollumn } from "./columns";
import { DropdownMenu } from "@radix-ui/react-dropdown-menu";

interface CellActionProps {
  data: BillboardCollumn;
}
export const CellAction: React.FC<CellActionProps> = ({ data }) => {
  return (
    <div>
      <DropdownMenu></DropdownMenu>
    </div>
  );
};
