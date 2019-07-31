.bytecode 50.0
.class synchronized com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/android/u/tast/experience/bean/TodayTaskList;>;"
.inner class private GetTodayTaskList inner com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList outer com/nd/android/u/tast/main/activity/TaskMainActivity

.field final synthetic 'this$0' Lcom/nd/android/u/tast/main/activity/TaskMainActivity;

.method private <init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Lcom/nd/android/u/tast/main/activity/TaskMainActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/<init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
invokevirtual com/nd/android/u/tast/buss/TaskModelManager/getTodayTask()Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$1000(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
ifnull L0
aload 1
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
ifnull L0
aload 1
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L0
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$1000(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$1000(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L0
aload 1
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
astore 6
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$1000(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/getItemList()Ljava/util/ArrayList;
astore 7
iconst_0
istore 2
aload 6
invokevirtual java/util/ArrayList/size()I
istore 4
L1:
iload 2
iload 4
if_icmpge L0
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/tast/experience/bean/MoreExperienceItem
astore 8
iconst_0
istore 3
aload 7
invokevirtual java/util/ArrayList/size()I
istore 5
L2:
iload 3
iload 5
if_icmpge L3
aload 7
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/tast/experience/bean/MoreExperienceItem
astore 9
aload 9
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getItemid()J
aload 8
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getItemid()J
lcmp
ifne L4
aload 8
aload 9
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getIsnew()I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setIsnew(I)V
L3:
iload 2
iconst_1
iadd
istore 2
goto L1
L4:
iload 3
iconst_1
iadd
istore 3
goto L2
L0:
aload 1
areturn
.limit locals 10
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/u/tast/experience/bean/TodayTaskList;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$1100(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Lcom/nd/android/u/tast/main/widget/TaskPullToRefreshListView;
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
aload 1
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$1200(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Lcom/nd/android/u/tast/experience/bean/TodayTaskList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/u/tast/experience/bean/TodayTaskList
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$GetTodayTaskList/onPostExecute(Lcom/nd/android/u/tast/experience/bean/TodayTaskList;)V
return
.limit locals 2
.limit stack 2
.end method
