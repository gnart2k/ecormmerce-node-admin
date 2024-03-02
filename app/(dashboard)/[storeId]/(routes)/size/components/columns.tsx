"use client";
import { ColumnDef } from "@tanstack/react-table";
import { CellAction } from "./cell-action";
export type SizeCollumn = {
  id: string;
  name: string;
  value: string;
  createdAt: string;
};

export const columns: ColumnDef<SizeCollumn>[] = [
  {
    accessorKey: "name",
    header: "Name",
  },
  {
    accessorKey: "value",
    header: "Value",
  },
  {
    accessorKey: "createdAt",
    header: "Date",
    cell: ({ row }) => row.original.createdAt,
  },
  {
    id: "actions",
    cell: ({ row }) => <CellAction data={row.original} />,
  },
];
