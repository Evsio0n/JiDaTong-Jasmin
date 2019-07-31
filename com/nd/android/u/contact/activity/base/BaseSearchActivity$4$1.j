.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/activity/base/BaseSearchActivity$4/run()V
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$4
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;

.method <init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1/this$1 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1/this$1 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
ldc ""
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/filter Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1/this$1 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1/this$1 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1/this$1 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/layoutRecommend Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1/this$1 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
