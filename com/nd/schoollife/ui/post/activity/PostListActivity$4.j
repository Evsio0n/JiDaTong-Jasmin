.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostListActivity$4
.super java/lang/Object
.implements com/nd/schoollife/ui/common/process/PraiseListener
.enclosing method com/nd/schoollife/ui/post/activity/PostListActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/post/activity/PostListActivity$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostListActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostListActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCancelPraise(JZLcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;)V
lload 1
ldc2_w -1L
lcmp
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
lload 1
invokestatic com/nd/schoollife/ui/post/activity/PostListActivity/access$300(Lcom/nd/schoollife/ui/post/activity/PostListActivity;J)I
istore 5
iload 5
iconst_m1
if_icmpeq L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostListActivity/access$400(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)Ljava/util/List;
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 8
aload 4
getstatic com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/LIST Lcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;
if_acmpeq L2
iload 3
ifeq L3
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
iconst_1
if_icmpne L1
aload 8
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lstore 6
lload 6
lstore 1
lload 6
lconst_0
lcmp
ifle L4
lload 6
lconst_1
lsub
lstore 1
L4:
aload 8
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
return
L3:
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
ifne L1
aload 8
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_1
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
return
L2:
iload 3
ifne L1
aload 8
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_1
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
return
.limit locals 9
.limit stack 5
.end method

.method public onPraise(JZLcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;)V
lload 1
ldc2_w -1L
lcmp
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
lload 1
invokestatic com/nd/schoollife/ui/post/activity/PostListActivity/access$300(Lcom/nd/schoollife/ui/post/activity/PostListActivity;J)I
istore 5
iload 5
iconst_m1
if_icmpeq L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostListActivity/access$400(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)Ljava/util/List;
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 8
aload 4
getstatic com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/LIST Lcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;
if_acmpeq L2
iload 3
ifeq L3
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
ifne L1
aload 8
iconst_1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_1
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
return
L3:
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
iconst_1
if_icmpne L1
aload 8
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lstore 6
lload 6
lstore 1
lload 6
lconst_0
lcmp
ifle L4
lload 6
lconst_1
lsub
lstore 1
L4:
aload 8
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
return
L2:
iload 3
ifne L1
aload 8
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lstore 6
lload 6
lstore 1
lload 6
lconst_0
lcmp
ifle L5
lload 6
lconst_1
lsub
lstore 1
L5:
aload 8
lload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
return
.limit locals 9
.limit stack 5
.end method
