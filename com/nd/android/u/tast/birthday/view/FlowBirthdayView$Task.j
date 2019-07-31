.bytecode 50.0
.class synchronized com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private Task inner com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task outer com/nd/android/u/tast/birthday/view/FlowBirthdayView

.field private 'retJson' Lorg/json/JSONObject;

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;

.method private <init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/retJson Lorg/json/JSONObject;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/<init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new com/nd/android/u/tast/com/OapBirthdayCom
dup
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/<init>()V
astore 1
L0:
aload 0
aload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
invokestatic com/nd/android/u/tast/birthday/view/FlowBirthdayView/access$300(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getUid()J
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/postBlessGetJson(J)Lorg/json/JSONObject;
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/retJson Lorg/json/JSONObject;
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/retJson Lorg/json/JSONObject;
ifnull L3
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/retJson Lorg/json/JSONObject;
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L1
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
