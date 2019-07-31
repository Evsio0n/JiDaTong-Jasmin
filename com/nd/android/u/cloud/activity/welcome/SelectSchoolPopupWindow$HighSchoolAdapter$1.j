.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class HighSchoolAdapter inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter outer com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow
.inner class inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;

.field final synthetic 'val$pos' I

.method <init>(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/this$1 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/val$pos I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/this$1 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;
invokestatic com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/access$000(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;)Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/this$1 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;
invokestatic com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/access$100(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/val$pos I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/this$1 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;
invokestatic com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/access$000(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;)Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener;
aload 1
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
aload 1
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolCode()Ljava/lang/String;
invokeinterface com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener/dataSelected(Ljava/lang/String;Ljava/lang/String;)V 2
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/this$1 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/disappear()V
return
.limit locals 2
.limit stack 3
.end method
