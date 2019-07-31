.bytecode 50.0
.class synchronized com/product/android/ui/widget/SearchTipItem$SearchFromServer
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;>;"
.inner class private SearchFromServer inner com/product/android/ui/widget/SearchTipItem$SearchFromServer outer com/product/android/ui/widget/SearchTipItem

.field final synthetic 'this$0' Lcom/product/android/ui/widget/SearchTipItem;

.method private <init>(Lcom/product/android/ui/widget/SearchTipItem;)V
aload 0
aload 1
putfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/product/android/ui/widget/SearchTipItem;Lcom/product/android/ui/widget/SearchTipItem$1;)V
aload 0
aload 1
invokespecial com/product/android/ui/widget/SearchTipItem$SearchFromServer/<init>(Lcom/product/android/ui/widget/SearchTipItem;)V
return
.limit locals 3
.limit stack 2
.end method

.method private netSearchFriend(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11014
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
aconst_null
astore 1
iload 2
ifne L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
astore 1
L0:
aload 1
astore 3
aload 1
ifnonnull L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L1:
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/product/android/ui/widget/SearchTipItem$SearchFromServer/doInBackground([Ljava/lang/String;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/util/List;
.signature "([Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
aload 0
aload 1
iconst_0
aaload
invokespecial com/product/android/ui/widget/SearchTipItem$SearchFromServer/netSearchFriend(Ljava/lang/String;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/product/android/ui/widget/SearchTipItem$SearchFromServer/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 0
getfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$500(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$300(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
aload 0
getfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$400(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L2:
aload 0
getfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$600(Lcom/product/android/ui/widget/SearchTipItem;)Lcom/product/android/ui/widget/SearchTipItem$OnNetSearch;
ifnull L1
aload 0
getfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$600(Lcom/product/android/ui/widget/SearchTipItem;)Lcom/product/android/ui/widget/SearchTipItem$OnNetSearch;
aload 1
invokeinterface com/product/android/ui/widget/SearchTipItem$OnNetSearch/onSearch(Ljava/util/List;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$300(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/SearchTipItem$SearchFromServer/this$0 Lcom/product/android/ui/widget/SearchTipItem;
invokestatic com/product/android/ui/widget/SearchTipItem/access$400(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
