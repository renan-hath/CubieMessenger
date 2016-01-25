.class public final enum Lcom/liquable/nemo/friend/model/Account$FriendState;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/model/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/friend/model/Account$FriendState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/friend/model/Account$FriendState;

.field public static final enum BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field public static final enum FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field public static final enum NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field public static final enum WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field public static final enum WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/Account$FriendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    new-instance v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    const-string/jumbo v1, "WAIT_ACCEPT"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/friend/model/Account$FriendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    new-instance v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    const-string/jumbo v1, "WAIT_CONFIRM"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/friend/model/Account$FriendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    new-instance v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    const-string/jumbo v1, "FRIEND"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    new-instance v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    const-string/jumbo v1, "BLOCK"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/friend/model/Account$FriendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/friend/model/Account$FriendState;

    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->$VALUES:[Lcom/liquable/nemo/friend/model/Account$FriendState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$FriendState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/friend/model/Account$FriendState;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->$VALUES:[Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0}, [Lcom/liquable/nemo/friend/model/Account$FriendState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/friend/model/Account$FriendState;

    return-object v0
.end method


# virtual methods
.method public getNotAllowedFrom()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/liquable/nemo/friend/model/Account$FriendState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$1;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no such state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    const-class v0, Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 144
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_2
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_3
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
