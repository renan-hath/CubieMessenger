.class final enum Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;
.super Ljava/lang/Enum;
.source "ChatGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/ChatGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

.field public static final enum HEADER:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

.field public static final enum NORMAL:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    const-string/jumbo v1, "HEADER"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->HEADER:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    new-instance v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->NORMAL:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    .line 182
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    sget-object v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->HEADER:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->NORMAL:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->$VALUES:[Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const-class v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->$VALUES:[Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    return-object v0
.end method
