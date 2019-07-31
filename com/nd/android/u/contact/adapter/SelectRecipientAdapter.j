.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/SelectRecipientAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.implements android/widget/Filterable
.inner class inner com/nd/android/u/contact/adapter/SelectRecipientAdapter$1
.inner class inner com/nd/android/u/contact/adapter/SelectRecipientAdapter$2
.inner class Holder inner com/nd/android/u/contact/adapter/SelectRecipientAdapter$Holder outer com/nd/android/u/contact/adapter/SelectRecipientAdapter

.field private static final 'maxSize' I = 20


.field private final 'TAG' Ljava/lang/String;

.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'contractList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'grouplist' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'handler' Landroid/os/Handler;

.field private 'mcontext' Landroid/content/Context;

.field private 'selectcontractlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;Landroid/os/Handler;Ljava/util/ArrayList<Lcom/product/android/commonInterface/chat/SearchContract;>;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "SelectRecipientAdapter"
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/mcontext Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
aload 0
new com/nd/android/u/contact/adapter/SelectRecipientAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)V
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 4
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/selectcontractlist Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/mcontext Landroid/content/Context;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/handler Landroid/os/Handler;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
aload 0
aload 5
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/grouplist Ljava/util/List;
return
.limit locals 6
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getFilter()Landroid/widget/Filter;
new com/nd/android/u/contact/adapter/SelectRecipientAdapter$2
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter$2/<init>(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.catch java/lang/Exception from L0 to L1 using L2
aload 2
astore 3
aload 2
ifnonnull L3
new com/nd/android/u/contact/view/SelectRecipientView
dup
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/mcontext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/selectcontractlist Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/grouplist Ljava/util/List;
invokespecial com/nd/android/u/contact/view/SelectRecipientView/<init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;Ljava/util/ArrayList;Ljava/util/List;)V
astore 3
L3:
aload 3
checkcast com/nd/android/u/contact/view/SelectRecipientView
astore 2
L0:
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/chat/SearchContract
invokevirtual com/nd/android/u/contact/view/SelectRecipientView/initComponentValue(Lcom/product/android/commonInterface/chat/SearchContract;)V
L1:
aload 3
areturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 3
areturn
.limit locals 4
.limit stack 6
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public final setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter/contractList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
