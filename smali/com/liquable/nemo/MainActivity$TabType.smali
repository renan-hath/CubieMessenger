.class final enum Lcom/liquable/nemo/MainActivity$TabType;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/MainActivity$TabType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/MainActivity$TabType;

.field public static final enum CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

.field public static final enum FORUM:Lcom/liquable/nemo/MainActivity$TabType;

.field public static final enum FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

.field public static final enum RECOMMEND_FORUM:Lcom/liquable/nemo/MainActivity$TabType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/liquable/nemo/MainActivity$TabType;

    const-string/jumbo v1, "FRIEND_LIST"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/MainActivity$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/MainActivity$TabType;->FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    new-instance v0, Lcom/liquable/nemo/MainActivity$TabType;

    const-string/jumbo v1, "CHATGROUP_LIST"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/MainActivity$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/MainActivity$TabType;->CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    new-instance v0, Lcom/liquable/nemo/MainActivity$TabType;

    const-string/jumbo v1, "FORUM"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/MainActivity$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/MainActivity$TabType;->FORUM:Lcom/liquable/nemo/MainActivity$TabType;

    new-instance v0, Lcom/liquable/nemo/MainActivity$TabType;

    const-string/jumbo v1, "RECOMMEND_FORUM"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/MainActivity$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/MainActivity$TabType;->RECOMMEND_FORUM:Lcom/liquable/nemo/MainActivity$TabType;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/MainActivity$TabType;

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->FORUM:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->RECOMMEND_FORUM:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/MainActivity$TabType;->$VALUES:[Lcom/liquable/nemo/MainActivity$TabType;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/MainActivity$TabType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/liquable/nemo/MainActivity$TabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/MainActivity$TabType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/MainActivity$TabType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/liquable/nemo/MainActivity$TabType;->$VALUES:[Lcom/liquable/nemo/MainActivity$TabType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/MainActivity$TabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/MainActivity$TabType;

    return-object v0
.end method
