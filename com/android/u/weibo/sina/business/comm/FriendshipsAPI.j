.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/FriendshipsAPI
.super com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final 'SERVER_URL_PRIX' Ljava/lang/String; = "https://api.weibo.com/2/friendships"

.method public <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
return
.limit locals 2
.limit stack 2
.end method

.method public bilateral(JIILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 6
ldc "page"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/friends/bilateral.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public bilateralIds(JIILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 6
ldc "page"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/friends/bilateral/ids.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public chainFollowers(JIILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 6
ldc "page"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/friends_chain/followers.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public create(JLjava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 5
ldc "screen_name"
aload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/friendships/create.json"
aload 5
ldc "POST"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public create(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 3
aload 3
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/friendships/create.json"
aload 3
ldc "POST"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public destroy(JLjava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 5
ldc "screen_name"
aload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/friendships/destroy.json"
aload 5
ldc "POST"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public destroy(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 3
aload 3
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/friendships/destroy.json"
aload 3
ldc "POST"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public followers(JIIZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 7
aload 7
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 7
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 7
ldc "cursor"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 5
ifeq L0
aload 7
ldc "trim_status"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/friendships/followers.json"
aload 7
ldc "GET"
aload 6
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 7
ldc "trim_status"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 8
.limit stack 5
.end method

.method public followers(Ljava/lang/String;IIZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "count"
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 6
ldc "cursor"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 4
ifeq L0
aload 6
ldc "trim_status"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/friendships/followers.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 6
ldc "trim_status"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 7
.limit stack 5
.end method

.method public followersActive(JILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 5
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/followers/active.json"
aload 5
ldc "GET"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public followersIds(JIILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 6
ldc "cursor"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/followers/ids.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public followersIds(Ljava/lang/String;IILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "count"
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 5
ldc "cursor"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/followers/ids.json"
aload 5
ldc "GET"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public friends(JIIZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 7
aload 7
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 7
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 7
ldc "cursor"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 5
ifeq L0
aload 7
ldc "trim_status"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/friendships/friends.json"
aload 7
ldc "GET"
aload 6
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 7
ldc "trim_status"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 8
.limit stack 5
.end method

.method public friends(Ljava/lang/String;IIZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "count"
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 6
ldc "cursor"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 4
ifeq L0
aload 6
ldc "trim_status"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/friendships/friends.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 6
ldc "trim_status"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 7
.limit stack 5
.end method

.method public friendsIds(JIILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "count"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 6
ldc "cursor"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/friends/ids.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public friendsIds(Ljava/lang/String;IILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "count"
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 5
ldc "cursor"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/friendships/friends/ids.json"
aload 5
ldc "GET"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public inCommon(JJIIZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 9
aload 9
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 9
ldc "suid"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 9
ldc "count"
iload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 9
ldc "page"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
iload 7
ifeq L0
aload 9
ldc "trim_status"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/friendships/friends/in_common.json"
aload 9
ldc "GET"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 9
ldc "trim_status"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 10
.limit stack 5
.end method

.method public show(JJLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "source_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "target_id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 0
ldc "https://api.weibo.com/2/friendships/show.json"
aload 6
ldc "GET"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public show(JLjava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "source_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 5
ldc "target_screen_name"
aload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/friendships/show.json"
aload 5
ldc "GET"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public show(Ljava/lang/String;JLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
aload 5
ldc "source_screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "target_id"
lload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 0
ldc "https://api.weibo.com/2/friendships/show.json"
aload 5
ldc "GET"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "target_screen_name"
aload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "source_screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/friendships/show.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 5
.end method
