.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated
.super com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public prepareMessage()Z
aload 0
ldc "\u8001\u5927"
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/operatorName Ljava/lang/String;
aload 0
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "\u5f20\u4e09"
aastore
dup
iconst_1
ldc "\u5c0f\u516d"
aastore
dup
iconst_2
ldc "\u738b\u516b"
aastore
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/memberNames [Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/discussion_created_title I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/operatorName Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/displayTitle Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/discussion_created_content I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/memberNames [Ljava/lang/String;
invokestatic java/util/Arrays/deepToString([Ljava/lang/Object;)Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_DiscussionCreated/displayContent Ljava/lang/String;
iconst_0
ireturn
.limit locals 1
.limit stack 7
.end method
