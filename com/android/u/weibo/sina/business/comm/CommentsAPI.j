.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/CommentsAPI
.super com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final 'SERVER_URL_PRIX' Ljava/lang/String; = "https://api.weibo.com/2/comments"

.method public <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
return
.limit locals 2
.limit stack 2
.end method

.method public byME(JJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 9
aload 9
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 9
ldc "max_id"
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
aload 9
ldc "filter_by_source"
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/comments/by_me.json"
aload 9
ldc "GET"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 10
.limit stack 5
.end method

.method public create(Ljava/lang/String;JILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 6
aload 6
ldc "comment"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "id"
lload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 6
ldc "comment_ori"
iload 4
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/comments/create.json"
aload 6
ldc "POST"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
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
ldc "cid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 0
ldc "https://api.weibo.com/2/comments/destroy.json"
aload 4
ldc "POST"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 5
.end method

.method public destroyBatch([JLcom/weibo/sdk/android/net/RequestListener;)V
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
laload
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
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
ldc "https://api.weibo.com/2/comments/sdestroy_batch.json"
aload 5
ldc "POST"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public mentions(JJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
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
aload 10
ldc "filter_by_author"
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 10
ldc "filter_by_source"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/comments/mentions.json"
aload 10
ldc "GET"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 11
.limit stack 5
.end method

.method public reply(JJLjava/lang/String;IILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 9
aload 9
ldc "cid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 9
ldc "id"
lload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 9
ldc "comment"
aload 5
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 9
ldc "without_mention"
iload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 9
ldc "comment_ori"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/comments/reply.json"
aload 9
ldc "POST"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 10
.limit stack 5
.end method

.method public show(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
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
ldc "https://api.weibo.com/2/comments/show.json"
aload 11
ldc "GET"
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 12
.limit stack 5
.end method

.method public showBatch([JLcom/weibo/sdk/android/net/RequestListener;)V
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
laload
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
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
ldc "cids"
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/comments/show_batch.json"
aload 5
ldc "GET"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public timeline(JJIIZLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 9
aload 9
ldc "since_id"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 9
ldc "max_id"
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
ldc "trim_user"
iconst_1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
L1:
aload 0
ldc "https://api.weibo.com/2/comments/timeline.json"
aload 9
ldc "GET"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 9
ldc "trim_user"
iconst_0
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
goto L1
.limit locals 10
.limit stack 5
.end method

.method public toME(JJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
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
aload 10
ldc "filter_by_author"
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 10
ldc "filter_by_source"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/ordinal()I
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/comments/to_me.json"
aload 10
ldc "GET"
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 11
.limit stack 5
.end method
