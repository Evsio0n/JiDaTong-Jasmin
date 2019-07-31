.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/common/android/utils/task/genericTask/TaskParams;Ljava/lang/Void;Ljava/lang/Object;>;"
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask outer com/nd/android/u/contact/activity/PhotoWallActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoWallActivity;

.method protected <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 1
iconst_0
aaload
astore 1
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L5
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1500(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
aload 1
ldc "strNamePre"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUserIdByKey(JILjava/lang/String;)Ljava/util/ArrayList; 4
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1502(Lcom/nd/android/u/contact/activity/PhotoWallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1500(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 2
astore 1
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L1
aload 2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
astore 1
L6:
aload 1
areturn
L5:
aconst_null
areturn
.limit locals 4
.limit stack 7
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/common/android/utils/task/genericTask/TaskParams;
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1500(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1500(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L1
aload 1
checkcast java/util/ArrayList
astore 1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1600(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 1
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/setStringArray(Ljava/util/ArrayList;)V
aload 1
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
iconst_4
if_icmple L2
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1700(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
ldc_w 222.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokevirtual android/widget/AutoCompleteTextView/setDropDownHeight(I)V
L3:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1600(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/notifyDataSetChanged()V
L0:
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1700(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
iload 2
bipush 48
imul
bipush 12
iadd
i2f
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokevirtual android/widget/AutoCompleteTextView/setDropDownHeight(I)V
goto L3
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1600(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 1
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/setStringArray(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1700(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Landroid/widget/AutoCompleteTextView;
iconst_0
invokevirtual android/widget/AutoCompleteTextView/setDropDownHeight(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1600(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/notifyDataSetChanged()V
return
.limit locals 3
.limit stack 4
.end method
