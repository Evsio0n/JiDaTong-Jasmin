.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode
.super java/lang/Object
.inner class SearchDepartNode inner com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode outer com/nd/android/u/contact/activity/SearchDepartActivity

.field 'mdepart' Lcom/nd/android/u/contact/dataStructure/OapDepart;

.field 'munitName' Ljava/lang/String;

.field 'munitid' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchDepartActivity;

.field 'type' I

.method public <init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;ILjava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/type I
aload 0
aload 3
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/munitName Ljava/lang/String;
aload 0
iload 2
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/munitid I
return
.limit locals 4
.limit stack 2
.end method

.method public <init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/type I
aload 0
aload 2
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
return
.limit locals 3
.limit stack 2
.end method

.method public getNodeName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/type I
tableswitch 0
L0
L1
default : L2
L2:
ldc ""
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
areturn
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/munitName Ljava/lang/String;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/munitName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
