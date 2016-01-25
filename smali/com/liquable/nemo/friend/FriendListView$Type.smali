.class public final enum Lcom/liquable/nemo/friend/FriendListView$Type;
.super Ljava/lang/Enum;
.source "FriendListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/FriendListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/friend/FriendListView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/friend/FriendListView$Type;

.field public static final enum CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

.field public static final enum FRIEND:Lcom/liquable/nemo/friend/FriendListView$Type;

.field public static final enum GROUP:Lcom/liquable/nemo/friend/FriendListView$Type;

.field public static final enum IMPORT:Lcom/liquable/nemo/friend/FriendListView$Type;

.field public static final enum RECOMMEND:Lcom/liquable/nemo/friend/FriendListView$Type;

.field public static final enum USER:Lcom/liquable/nemo/friend/FriendListView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/friend/FriendListView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->USER:Lcom/liquable/nemo/friend/FriendListView$Type;

    new-instance v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    const-string/jumbo v1, "GROUP"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/friend/FriendListView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->GROUP:Lcom/liquable/nemo/friend/FriendListView$Type;

    new-instance v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    const-string/jumbo v1, "FRIEND"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/friend/FriendListView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->FRIEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    new-instance v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    const-string/jumbo v1, "RECOMMEND"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/friend/FriendListView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->RECOMMEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    new-instance v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    const-string/jumbo v1, "CONTACT"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/friend/FriendListView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    new-instance v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    const-string/jumbo v1, "IMPORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/FriendListView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->IMPORT:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/liquable/nemo/friend/FriendListView$Type;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->USER:Lcom/liquable/nemo/friend/FriendListView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->GROUP:Lcom/liquable/nemo/friend/FriendListView$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->FRIEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->RECOMMEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/friend/FriendListView$Type;->IMPORT:Lcom/liquable/nemo/friend/FriendListView$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->$VALUES:[Lcom/liquable/nemo/friend/FriendListView$Type;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/FriendListView$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/FriendListView$Type;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/friend/FriendListView$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/liquable/nemo/friend/FriendListView$Type;->$VALUES:[Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v0}, [Lcom/liquable/nemo/friend/FriendListView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/friend/FriendListView$Type;

    return-object v0
.end method
