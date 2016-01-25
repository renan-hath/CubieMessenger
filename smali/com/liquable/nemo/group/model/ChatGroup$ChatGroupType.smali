.class public final enum Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
.super Ljava/lang/Enum;
.source "ChatGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/model/ChatGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatGroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

.field public static final enum GROUP:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

.field public static final enum ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    const-string/jumbo v1, "GROUP"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->GROUP:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    const-string/jumbo v1, "ONE_TO_ONE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->GROUP:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->$VALUES:[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->$VALUES:[Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    return-object v0
.end method
