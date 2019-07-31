.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/initEvent(Landroid/widget/GridView;)V
.inner class inner com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;

.field final synthetic 'val$gridView' Landroid/widget/GridView;

.method <init>(Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;Landroid/widget/GridView;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1/this$0 Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1/val$gridView Landroid/widget/GridView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1/val$gridView Landroid/widget/GridView;
invokevirtual android/widget/GridView/getAdapter()Landroid/widget/ListAdapter;
iload 3
invokeinterface android/widget/ListAdapter/getItem(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapApp
astore 2
aload 2
ifnonnull L0
return
L0:
aload 1
ldc "appid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/product/android/commonInterface/contact/OapApp/appid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
ldc "appcode"
aload 2
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
ldc "appname"
aload 2
getfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 2
getfield com/product/android/commonInterface/contact/OapApp/appid I
ldc_w 100002
if_icmpne L1
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1/this$0 Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
invokestatic com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/access$100(Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;)Landroid/content/Context;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 6
ldc_w 62001
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L1:
aload 2
getfield com/product/android/commonInterface/contact/OapApp/appid I
aload 2
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aconst_null
aload 0
getfield com/nd/android/u/cloud/ui/adapter/AppListViewAdapter$1/this$0 Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
invokestatic com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/access$100(Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;)Landroid/content/Context;
iconst_1
iconst_0
aconst_null
invokestatic com/nd/android/u/contact/business/SynOapApp/jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZLjava/lang/String;)V
return
.limit locals 6
.limit stack 7
.end method
