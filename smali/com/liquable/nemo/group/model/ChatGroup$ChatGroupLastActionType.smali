.class public final enum Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
.super Ljava/lang/Enum;
.source "ChatGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/model/ChatGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatGroupLastActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

.field public static final enum PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

.field public static final enum SECRET_PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

.field public static final enum SECRET_TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

.field public static final enum TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

.field public static final enum VOICE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    const-string/jumbo v1, "PAINT"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    const-string/jumbo v1, "VOICE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->VOICE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    const-string/jumbo v1, "SECRET_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->SECRET_TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    const-string/jumbo v1, "SECRET_PAINT"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->SECRET_PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->VOICE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->SECRET_TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->SECRET_PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->$VALUES:[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->$VALUES:[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    return-object v0
.end method
