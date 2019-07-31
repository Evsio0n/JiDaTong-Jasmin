.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/synGroup()Z
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/loadGroup()Z
pop
return
.limit locals 1
.limit stack 1
.end method
