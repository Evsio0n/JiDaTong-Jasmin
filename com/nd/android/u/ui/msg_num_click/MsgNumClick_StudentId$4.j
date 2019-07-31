.bytecode 50.0
.class synchronized com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/findFriends(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;)V
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4

.field final synthetic 'this$0' Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;

.field final synthetic 'val$callBack' Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;

.method <init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;)V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
aload 0
aload 2
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4/val$callBack Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/text Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11014
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifne L5
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L5
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
astore 1
L1:
aload 1
ifnull L5
L3:
aload 1
invokeinterface java/util/List/size()I 0
ifle L5
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 1
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4/val$callBack Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;
aload 1
invokestatic com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/access$100(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;Lcom/product/android/commonInterface/contact/OapUserSimple;)V
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L5:
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
invokestatic com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/access$200(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)V
return
.limit locals 2
.limit stack 4
.end method
