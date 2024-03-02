import prismadb from "@/lib/prismadb";
import SizeForm from "./components/size-form";

const BillboardPage = async ({ params }: { params: { sizeId: string } }) => {
  const size = await prismadb.size.findUnique({
    where: {
      id: params.sizeId,
    },
  });
  return (
    <div
      className="
      flex-col"
    >
      <div className="flex-1 space-y-4 p-8 pt-6">
        <SizeForm inititalData={size} />
      </div>
    </div>
  );
};

export default BillboardPage;
