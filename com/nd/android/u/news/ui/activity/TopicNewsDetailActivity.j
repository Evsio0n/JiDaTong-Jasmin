.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/TopicNewsDetailActivity
.super com/nd/android/u/news/ui/activity/NewsDetailActivity

.field private 'topicId' J

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected getMoreNews()Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getNewsOperator()Lcom/nd/android/forumsdk/operator/INewsOperator;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsDetailActivity/topicId J
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsDetailActivity/maxTime J
bipush 10
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getMoreTopicNewsList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 5
areturn
.limit locals 1
.limit stack 6
.end method

.method protected initValue(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/initValue(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsDetailActivity/getIntent()Landroid/content/Intent;
ldc "topic_news_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/news/ui/activity/TopicNewsDetailActivity/topicId J
return
.limit locals 2
.limit stack 5
.end method
