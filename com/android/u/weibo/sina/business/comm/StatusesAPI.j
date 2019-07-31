.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/StatusesAPI
.super com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final 'SERVER_URL_PRIX' Ljava/lang/String; = "https://api.weibo.com/2/statuses"

.method public <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
return
.limit locals 2
.limit stack 2
.end method

.method public bilateralTimeline(JJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 7
ifeq L0
aload 11
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 11
ldc "feature"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 9
ifeq L2
aload 11
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L3:
aload 0
ldc "https://api.weibo.com/2/statuses/bilateral_timeline.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 11
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
L2:
aload 11
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L3
.limit locals 12
.limit stack 5
.end method

.method public count([Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 1
arraylength
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 6
aload 1
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 6
aload 6
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/deleteCharAt(I)Ljava/lang/StringBuilder;
pop
aload 5
ldc "ids"
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/statuses/count.json"
aload 5
ldc "GET"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public destroy(JLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 0
ldc "https://api.weibo.com/2/statuses/destroy.json"
aload 4
ldc "POST"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 5
.end method

.method public emotions(Lcom/android/u/weibo/sina/business/comm/WeiboAPI$EMOTION_TYPE;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "type"
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$EMOTION_TYPE/name()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "language"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/name()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/emotions.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 5
.end method

.method public friendsTimeline(JJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 7
ifeq L0
aload 11
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 11
ldc "feature"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 9
ifeq L2
aload 11
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L3:
aload 0
ldc "https://api.weibo.com/2/statuses/friends_timeline.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 11
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
L2:
aload 11
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L3
.limit locals 12
.limit stack 5
.end method

.method public friendsTimelineIds(JJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 10
aload 10
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 10
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 10
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 10
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 7
ifeq L0
aload 10
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 10
ldc "feature"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/friends_timeline/ids.json"
aload 10
ldc "GET"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 10
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 11
.limit stack 5
.end method

.method public homeTimeline(JJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 7
ifeq L0
aload 11
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 11
ldc "feature"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 9
ifeq L2
aload 11
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L3:
aload 0
ldc "https://api.weibo.com/2/statuses/home_timeline.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 11
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
L2:
aload 11
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L3
.limit locals 12
.limit stack 5
.end method

.method public hotCommentsDaily(IZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "count"
iload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 2
ifeq L0
aload 4
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/hot/comments_daily.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 4
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 5
.limit stack 5
.end method

.method public hotCommentsWeekly(IZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "count"
iload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 2
ifeq L0
aload 4
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/hot/comments_weekly.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 4
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 5
.limit stack 5
.end method

.method public hotRepostDaily(IZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "count"
iload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 2
ifeq L0
aload 4
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/hot/repost_daily.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 4
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 5
.limit stack 5
.end method

.method public hotRepostWeekly(IZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "count"
iload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 2
ifeq L0
aload 4
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/hot/repost_weekly.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 4
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 5
.limit stack 5
.end method

.method public mentions(JJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;ZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 12
aload 12
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 12
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 12
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 12
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 12
ldc "filter_by_author"
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 12
ldc "filter_by_source"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 12
ldc "filter_by_type"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 10
ifeq L0
aload 12
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/mentions.json"
aload 12
ldc "GET"
aload 11
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 12
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 13
.limit stack 5
.end method

.method public mentionsIds(JJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "filter_by_author"
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "filter_by_source"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "filter_by_type"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/mentions/ids.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 12
.limit stack 5
.end method

.method public publicTimeline(IIZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "count"
iload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 5
ldc "page"
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 3
ifeq L0
aload 5
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/public_timeline.json"
aload 5
ldc "GET"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 5
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 6
.limit stack 5
.end method

.method public queryID([Ljava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;ZZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 8
aload 1
ifnull L0
iconst_1
aload 1
arraylength
if_icmpne L1
aload 8
ldc "mid"
aload 1
iconst_0
aaload
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 8
ldc "type"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 3
ifeq L2
aload 8
ldc "inbox"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L3:
iload 4
ifeq L4
aload 8
ldc "isBase62"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L5:
aload 0
ldc "https://api.weibo.com/2/statuses/queryid.json"
aload 8
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L1:
aload 8
ldc "is_batch"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 9
aload 1
arraylength
istore 7
iconst_0
istore 6
L6:
iload 6
iload 7
if_icmpge L7
aload 9
aload 1
iload 6
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 6
iconst_1
iadd
istore 6
goto L6
L7:
aload 9
aload 9
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/deleteCharAt(I)Ljava/lang/StringBuilder;
pop
aload 8
ldc "mid"
aload 9
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
goto L0
L2:
aload 8
ldc "inbox"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L3
L4:
aload 8
ldc "isBase62"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L5
.limit locals 10
.limit stack 5
.end method

.method public queryMID([JLcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;Lcom/weibo/sdk/android/net/RequestListener;)V
iconst_0
istore 4
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
iconst_1
aload 1
arraylength
if_icmpne L0
aload 6
ldc "id"
aload 1
iconst_0
laload
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
L1:
aload 6
ldc "type"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/querymid.json"
aload 6
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 6
ldc "is_batch"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 1
arraylength
istore 5
L2:
iload 4
iload 5
if_icmpge L3
aload 7
aload 1
iload 4
laload
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 4
iconst_1
iadd
istore 4
goto L2
L3:
aload 7
aload 7
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/deleteCharAt(I)Ljava/lang/StringBuilder;
pop
aload 6
ldc "id"
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
goto L1
.limit locals 8
.limit stack 5
.end method

.method public repost(JLjava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "status"
aload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "is_comment"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/repost.json"
aload 6
ldc "POST"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public repostByMe(JJIILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 8
aload 8
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 8
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 8
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 8
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/repost_by_me.json"
aload 8
ldc "GET"
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 9
.limit stack 5
.end method

.method public repostTimeline(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "since_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 8
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "filter_by_author"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/repost_timeline.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 12
.limit stack 5
.end method

.method public repostTimelineIds(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "since_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 8
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "filter_by_author"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/repost_timeline/ids.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 12
.limit stack 5
.end method

.method public show(JLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 0
ldc "https://api.weibo.com/2/statuses/show.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 5
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "status"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 5
ldc "long"
aload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 5
ldc "lat"
aload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/update.json"
aload 5
ldc "POST"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "status"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "pic"
aload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 6
ldc "long"
aload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 6
ldc "lat"
aload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/upload.json"
aload 6
ldc "POST"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public uploadUrlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "status"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "url"
aload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 6
ldc "long"
aload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 6
ldc "lat"
aload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
ldc "https://api.weibo.com/2/statuses/upload_url_text.json"
aload 6
ldc "POST"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public userTimeline(JJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 7
ifeq L0
aload 11
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 11
ldc "feature"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 9
ifeq L2
aload 11
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L3:
aload 0
ldc "https://api.weibo.com/2/statuses/user_timeline.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 11
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
L2:
aload 11
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L3
.limit locals 12
.limit stack 5
.end method

.method public userTimeline(JJJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 13
aload 13
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 13
ldc "since_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 13
ldc "max_id"
lload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 13
ldc "count"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 13
ldc "page"
iload 8
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 9
ifeq L0
aload 13
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 13
ldc "feature"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 11
ifeq L2
aload 13
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L3:
aload 0
ldc "https://api.weibo.com/2/statuses/user_timeline.json"
aload 13
ldc "GET"
aload 12
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 13
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
L2:
aload 13
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L3
.limit locals 14
.limit stack 5
.end method

.method public userTimeline(Ljava/lang/String;JJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 12
aload 12
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 12
ldc "since_id"
lload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 12
ldc "max_id"
lload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 12
ldc "count"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 12
ldc "page"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 8
ifeq L0
aload 12
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 12
ldc "feature"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 10
ifeq L2
aload 12
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L3:
aload 0
ldc "https://api.weibo.com/2/statuses/user_timeline.json"
aload 12
ldc "GET"
aload 11
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 12
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
L2:
aload 12
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L3
.limit locals 13
.limit stack 5
.end method

.method public userTimelineIds(JJJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 12
aload 12
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 12
ldc "since_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 12
ldc "max_id"
lload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 12
ldc "count"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 12
ldc "page"
iload 8
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 9
ifeq L0
aload 12
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 12
ldc "feature"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/user_timeline/ids.json"
aload 12
ldc "GET"
aload 11
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 12
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 13
.limit stack 5
.end method

.method public userTimelineIds(Ljava/lang/String;JJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 11
aload 11
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 11
ldc "since_id"
lload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "max_id"
lload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 11
ldc "count"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 11
ldc "page"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 8
ifeq L0
aload 11
ldc "base_app"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 11
ldc "feature"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/statuses/user_timeline/ids.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 11
ldc "base_app"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 12
.limit stack 5
.end method
