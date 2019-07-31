.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SendFlowerTask inner com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask outer com/nd/android/u/contact/activity/TagManagerActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TagManagerActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;Lcom/nd/android/u/contact/activity/TagManagerActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask/<init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/TagInfo
astore 4
iload 2
ifne L4
aload 1
aload 4
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagid()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L3
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapTagCom()Lcom/nd/android/u/contact/com/OapTagCom;
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapTagCom/userChangeTags(Ljava/lang/String;)Z
ifeq L5
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L5:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 3
.end method
