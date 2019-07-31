.bytecode 50.0
.class synchronized com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private SendToTask inner com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask outer com/nd/android/u/tast/main/activity/TaskMainActivity

.field public static final 'SEND_TO_FRIEND' I = 0


.field public static final 'SEND_TO_WEIBO' I = 1


.field private 'cache' Landroid/graphics/Bitmap;

.field private 'mType' I

.field private 'savePath' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/tast/main/activity/TaskMainActivity;

.method public <init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Landroid/content/Context;II)V
aload 0
aload 1
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
aload 1
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$100(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/cache Landroid/graphics/Bitmap;
aload 0
iload 4
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/mType I
return
.limit locals 5
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
getstatic com/nd/android/u/tasklib/R$string/task_process_fail_retry I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
invokestatic com/product/android/utils/FileHelper/getTempPath(Ljava/lang/StringBuilder;)I
pop
aload 1
ldc "showOffPic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new java/io/File
dup
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 8
aload 8
invokevirtual java/io/File/exists()Z
ifne L0
aload 8
invokevirtual java/io/File/mkdir()Z
pop
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 4
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
ldc "task_config"
ldc "last_check_showOffpic_cache_time"
lconst_0
invokestatic com/common/android/utils/SharedPreferencesUtils/loadLongKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
lstore 6
lload 6
lconst_0
lcmp
ifeq L1
lload 4
lload 6
lsub
ldc2_w 86400000L
lcmp
ifle L2
L1:
lload 6
lconst_0
lcmp
ifeq L3
aload 8
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 8
aload 8
ifnull L3
iconst_0
istore 2
aload 8
arraylength
istore 3
L4:
iload 2
iload 3
if_icmpge L3
aload 8
iload 2
aaload
astore 9
aload 9
invokevirtual java/io/File/isDirectory()Z
ifeq L5
L6:
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
lload 4
aload 9
invokevirtual java/io/File/lastModified()J
lsub
ldc2_w 86400000L
lcmp
ifle L6
aload 9
invokevirtual java/io/File/delete()Z
pop
goto L6
L3:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
ldc "task_config"
ldc "last_check_showOffpic_cache_time"
lload 4
invokestatic com/common/android/utils/SharedPreferencesUtils/saveLongKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
L2:
aload 0
aload 1
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".png"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/savePath Ljava/lang/String;
new java/io/File
dup
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/savePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/cache Landroid/graphics/Bitmap;
aload 1
invokestatic com/common/android/utils/ImageUtils/saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z
ifeq L7
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/cache Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/cache Landroid/graphics/Bitmap;
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L7:
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 10
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/savePath Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 1
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/mType I
ifne L0
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20080
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
L1:
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$SendToTask/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
invokestatic com/nd/android/u/tast/main/activity/TaskMainActivity/access$200(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;)V
return
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32106
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
goto L1
.limit locals 2
.limit stack 4
.end method
