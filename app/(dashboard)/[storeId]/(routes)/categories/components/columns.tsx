"use client";
import { ColumnDef } from "@tanstack/react-table";
import { CellAction } from "./cell-action";
export type CategoryCollumn = {
  id: string;
  name: string;
  billboardLabel: string;
  createdAt: string;
};

export const columns: ColumnDef<CategoryCollumn>[] = [
  {
    accessorKey: "label",
    header: "Label",
  },
  {
    accessorKey: "createdAt",
    header: "Date",
    cell: ({ row }) => row.original.billboardLabel,
  },
  {
    id: "actions",
    cell: ({ row }) => <CellAction data={row.original} />,
  },
];
