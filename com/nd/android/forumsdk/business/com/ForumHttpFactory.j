.bytecode 50.0
.class public final synchronized com/nd/android/forumsdk/business/com/ForumHttpFactory
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;

.field private static 'newsCom' Lcom/nd/android/forumsdk/business/com/http/INewsCom;

.field private static 'postCom' Lcom/nd/android/forumsdk/business/com/http/IPostCom;

.field private static 'teamCom' Lcom/nd/android/forumsdk/business/com/http/ITeamCom;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/instance Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
ifnonnull L0
new com/nd/android/forumsdk/business/com/ForumHttpFactory
dup
invokespecial com/nd/android/forumsdk/business/com/ForumHttpFactory/<init>()V
putstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/instance Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
L0:
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/instance Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getNewsCom()Lcom/nd/android/forumsdk/business/com/http/INewsCom;
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
ifnonnull L0
new com/nd/android/forumsdk/business/com/http/impl/NewsComImpl
dup
invokespecial com/nd/android/forumsdk/business/com/http/impl/NewsComImpl/<init>()V
putstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
L0:
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/newsCom Lcom/nd/android/forumsdk/business/com/http/INewsCom;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getPostCom()Lcom/nd/android/forumsdk/business/com/http/IPostCom;
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
ifnonnull L0
new com/nd/android/forumsdk/business/com/http/impl/PostComImpl
dup
invokespecial com/nd/android/forumsdk/business/com/http/impl/PostComImpl/<init>()V
putstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
L0:
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/postCom Lcom/nd/android/forumsdk/business/com/http/IPostCom;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getTeamCom()Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
ifnonnull L0
new com/nd/android/forumsdk/business/com/http/impl/TeamComImpl
dup
invokespecial com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/<init>()V
putstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
L0:
getstatic com/nd/android/forumsdk/business/com/ForumHttpFactory/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
areturn
.limit locals 1
.limit stack 2
.end method
