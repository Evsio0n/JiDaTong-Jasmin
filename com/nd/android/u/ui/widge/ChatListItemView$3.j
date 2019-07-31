.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$300(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
instanceof com/nd/android/u/ui/widge/ChatListItemView_Image
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$300(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
instanceof com/nd/android/u/ui/widge/ChatListItemView_MultiImage
ifeq L1
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$300(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
instanceof com/nd/android/u/ui/widge/ChatListItemView_Image
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
astore 1
aload 1
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L2
aload 1
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L2
aload 1
checkcast com/nd/android/u/controller/bean/ImageMessage
astore 1
aload 1
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 257
if_icmpne L2
aload 1
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/isCatID(I)Z
ifeq L2
L1:
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L3
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getThumbnailPath()Ljava/lang/String; 0
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$400(Lcom/nd/android/u/ui/widge/ChatListItemView;Ljava/lang/String;Ljava/lang/String;)V
return
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
instanceof com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/url Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
ldc ""
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/appendSidUidToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 3
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
aload 3
aload 1
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$500(Lcom/nd/android/u/ui/widge/ChatListItemView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
return
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$3/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 6
L6:
aload 4
astore 3
aload 5
astore 1
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 1
aload 1
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L6
aload 1
checkcast com/nd/android/u/controller/bean/ImageMessage
astore 1
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
iconst_2
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 1
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
ldc ""
iconst_2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 3
astore 1
aload 4
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
sipush 1000
if_icmpgt L7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
sipush 1000
if_icmple L8
L7:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&thumb=440"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L9:
aload 5
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L6
L8:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&thumb=120"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L9
.limit locals 7
.limit stack 4
.end method
