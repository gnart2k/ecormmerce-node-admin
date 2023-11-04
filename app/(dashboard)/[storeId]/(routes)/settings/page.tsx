import prismadb from "@/lib/prismadb";
import { auth } from "@clerk/nextjs/server";
import { redirect } from "next/navigation";
import SettingForm from "./components/setting-form";

interface SettingPageProps {
  params: {
    storeId: string;
  };
}
const SettingPage: React.FC<SettingPageProps> = async ({ params }) => {
  const { userId } = auth();

  if (!userId) redirect("/sign-in");

  const store = await prismadb.store.findFirst({
    where: { id: params.storeId, userId: userId },
  });

  if (!store) redirect("/");
  return (
    <div>
      <SettingForm initialData={store} />
    </div>
  );
};

export default SettingPage;
