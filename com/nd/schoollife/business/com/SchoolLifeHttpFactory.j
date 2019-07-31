.bytecode 50.0
.class public final synchronized com/nd/schoollife/business/com/SchoolLifeHttpFactory
.super java/lang/Object

.field private static 'instance' Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;

.field private static 'mICommunityCom' Lcom/nd/schoollife/business/com/http/ICommunityCom;

.field private static 'mISquareCom' Lcom/nd/schoollife/business/com/http/ISquareCom;

.field private static 'mITeamCom' Lcom/nd/android/forumsdk/business/com/http/ITeamCom;

.method static <clinit>()V
new com/nd/schoollife/business/com/SchoolLifeHttpFactory
dup
invokespecial com/nd/schoollife/business/com/SchoolLifeHttpFactory/<init>()V
putstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/instance Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;
getstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/instance Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getCommunityCom()Lcom/nd/schoollife/business/com/http/ICommunityCom;
getstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mICommunityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
ifnonnull L0
new com/nd/schoollife/business/com/http/impl/CommunityComImpl
dup
invokespecial com/nd/schoollife/business/com/http/impl/CommunityComImpl/<init>()V
putstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mICommunityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
L0:
getstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mICommunityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSquareCom()Lcom/nd/schoollife/business/com/http/ISquareCom;
getstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mISquareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
ifnonnull L0
new com/nd/schoollife/business/com/http/impl/SquareComImpl
dup
invokespecial com/nd/schoollife/business/com/http/impl/SquareComImpl/<init>()V
putstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mISquareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
L0:
getstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mISquareCom Lcom/nd/schoollife/business/com/http/ISquareCom;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getTeamCom()Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
getstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mITeamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
ifnonnull L0
new com/nd/android/forumsdk/business/com/http/impl/TeamComImpl
dup
invokespecial com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/<init>()V
putstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mITeamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
L0:
getstatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/mITeamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
areturn
.limit locals 1
.limit stack 2
.end method
