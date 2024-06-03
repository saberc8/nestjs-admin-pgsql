export type DataScope = {
  deptIds: number[] | undefined;
  userName: string | undefined;
  OR: { deptId?: any; createBy?: any }[];
};
