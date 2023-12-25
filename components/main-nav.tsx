"use client";

import { useParams, usePathname } from "next/navigation";
import { cn } from "@/lib/utils";
import Link from "next/link";
export default function MainNav({
  className,
  ...props
}: React.HTMLAttributes<HTMLElement>) {
  const pathname = usePathname();
  const params = useParams();

  const routes = [
    {
      href: `/${params.storeId}`,
      lable: "Overview",
      active: pathname === `/${params.storeId}`,
    },

    {
      href: `/${params.storeId}/billboard`,
      lable: "Billboard",
      active: pathname === `/${params.storeId}/billboard`,
    },
    {
      href: `/${params.storeId}/settings`,
      lable: "Setting",
      active: pathname === `/${params.storeId}/settings`,
    },
  ];

  return (
    <nav
      className={cn(
        "flex items-center space-x-4 mr-4 lg:space-x-6 lg:mr-6",
        className,
      )}
    >
      {routes.map((route) => (
        <Link
          key={route.href}
          href={route.href}
          className={cn(
            "text-sm font-medium transition-color hover:text-primary",
            route.active
              ? "text-black dark:text-white"
              : "text-muted-foreground",
          )}
        >
          {route.lable}
        </Link>
      ))}
    </nav>
  );
}
