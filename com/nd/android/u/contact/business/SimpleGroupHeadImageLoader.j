.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/SimpleGroupHeadImageLoader
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static displayGroupHeaderImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
.catch java/lang/Exception from L0 to L1 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 1
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L1:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
astore 1
aload 1
ifnonnull L3
aload 0
getstatic com/nd/android/u/contact/R$drawable/group_face_default_circle I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L2:
astore 0
return
L3:
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_3
if_icmpne L4
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMsgNotifyType()I
ifeq L5
aload 0
getstatic com/nd/android/u/contact/R$drawable/discussion_face_default_circle I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L5:
aload 0
getstatic com/nd/android/u/contact/R$drawable/discussion_face_shield_circle I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L4:
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMsgNotifyType()I
ifeq L6
aload 0
getstatic com/nd/android/u/contact/R$drawable/group_face_default_circle I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L6:
aload 0
getstatic com/nd/android/u/contact/R$drawable/group_maskmsg_big I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 5
.limit stack 3
.end method
