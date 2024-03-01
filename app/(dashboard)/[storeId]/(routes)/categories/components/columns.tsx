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
    accessorKey: "name",
    header: "Name",
  },
  {
    accessorKey: "billboardLabel",
    header: "Billboard Label",
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
