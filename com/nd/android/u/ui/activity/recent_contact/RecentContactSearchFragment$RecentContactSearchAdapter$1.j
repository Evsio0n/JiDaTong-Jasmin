.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/setNetSearchList(Ljava/util/List;)V
.inner class private static RecentContactSearchAdapter inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;

.method <init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
new java/util/ArrayList
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/access$500(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;)Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/access$600(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;Ljava/util/ArrayList;)V
return
.limit locals 1
.limit stack 4
.end method
