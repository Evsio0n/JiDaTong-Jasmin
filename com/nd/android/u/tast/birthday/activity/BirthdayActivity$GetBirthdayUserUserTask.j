.bytecode 50.0
.class synchronized com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetBirthdayUserUserTask inner com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask outer com/nd/android/u/tast/birthday/activity/BirthdayActivity

.field private 'mJson' Lorg/json/JSONObject;

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;

.method private <init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask;)Lorg/json/JSONObject;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/mJson Lorg/json/JSONObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
new com/nd/android/u/tast/com/OapBirthdayCom
dup
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/<init>()V
astore 1
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/getBirthuserlistJson()Lorg/json/JSONObject;
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/mJson Lorg/json/JSONObject;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/mJson Lorg/json/JSONObject;
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpne L6
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/mJson Lorg/json/JSONObject;
ldc "birth_users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
invokestatic java/lang/System/currentTimeMillis()J
pop2
L1:
aload 1
ifnull L5
iconst_0
istore 2
L3:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L6
aload 1
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 3
new com/nd/android/u/tast/birthday/dataStructure/Birthuserlist
dup
invokespecial com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/<init>()V
astore 4
aload 4
aload 3
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/setJsonObject(Lorg/json/JSONObject;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayActivity/access$300(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
L5:
getstatic com/common/android/utils/task/genericTask/TaskResult/No_RESULT Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L6:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/mJson Lorg/json/JSONObject;
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayActivity/access$402(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;Ljava/lang/Long;)Ljava/lang/Long;
pop
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayActivity/access$400(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
ldc2_w 1000L
lmul
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayActivity/access$402(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;Ljava/lang/Long;)Ljava/lang/Long;
pop
L7:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 5
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayActivity/access$100(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayActivity/access$200(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
