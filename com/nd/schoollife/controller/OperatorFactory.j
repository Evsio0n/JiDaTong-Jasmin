.bytecode 50.0
.class public final synchronized com/nd/schoollife/controller/OperatorFactory
.super java/lang/Object

.field static 'communityOperator' Lcom/nd/schoollife/controller/operator/ICommunityOperator;

.field private static 'instance' Lcom/nd/schoollife/controller/OperatorFactory;

.field static 'postOperator' Lcom/nd/schoollife/controller/operator/IPostOperator;

.field static 'squareOperator' Lcom/nd/schoollife/controller/operator/ISquareOperator;

.field static 'teamOperator' Lcom/nd/schoollife/controller/operator/ITeamOperator;

.method static <clinit>()V
aconst_null
putstatic com/nd/schoollife/controller/OperatorFactory/communityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aconst_null
putstatic com/nd/schoollife/controller/OperatorFactory/postOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
aconst_null
putstatic com/nd/schoollife/controller/OperatorFactory/squareOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aconst_null
putstatic com/nd/schoollife/controller/OperatorFactory/teamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aconst_null
putstatic com/nd/schoollife/controller/OperatorFactory/instance Lcom/nd/schoollife/controller/OperatorFactory;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
getstatic com/nd/schoollife/controller/OperatorFactory/instance Lcom/nd/schoollife/controller/OperatorFactory;
ifnonnull L0
new com/nd/schoollife/controller/OperatorFactory
dup
invokespecial com/nd/schoollife/controller/OperatorFactory/<init>()V
areturn
L0:
getstatic com/nd/schoollife/controller/OperatorFactory/instance Lcom/nd/schoollife/controller/OperatorFactory;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
getstatic com/nd/schoollife/controller/OperatorFactory/communityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
ifnonnull L0
new com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl
dup
invokespecial com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/<init>()V
putstatic com/nd/schoollife/controller/OperatorFactory/communityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
L0:
getstatic com/nd/schoollife/controller/OperatorFactory/communityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getPostOperator()Lcom/nd/schoollife/controller/operator/IPostOperator;
getstatic com/nd/schoollife/controller/OperatorFactory/postOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnonnull L0
new com/nd/schoollife/controller/operator/impl/PostOperatorImpl
dup
invokespecial com/nd/schoollife/controller/operator/impl/PostOperatorImpl/<init>()V
putstatic com/nd/schoollife/controller/OperatorFactory/postOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
L0:
getstatic com/nd/schoollife/controller/OperatorFactory/postOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSquareOperator()Lcom/nd/schoollife/controller/operator/ISquareOperator;
getstatic com/nd/schoollife/controller/OperatorFactory/squareOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
ifnonnull L0
new com/nd/schoollife/controller/operator/impl/SquareOperatorImpl
dup
invokespecial com/nd/schoollife/controller/operator/impl/SquareOperatorImpl/<init>()V
putstatic com/nd/schoollife/controller/OperatorFactory/squareOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
L0:
getstatic com/nd/schoollife/controller/OperatorFactory/squareOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
getstatic com/nd/schoollife/controller/OperatorFactory/teamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
ifnonnull L0
new com/nd/schoollife/controller/operator/impl/TeamOperatorImpl
dup
invokespecial com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/<init>()V
putstatic com/nd/schoollife/controller/OperatorFactory/teamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
L0:
getstatic com/nd/schoollife/controller/OperatorFactory/teamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
areturn
.limit locals 1
.limit stack 2
.end method
