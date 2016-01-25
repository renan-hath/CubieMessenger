.class final enum Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;
.super Ljava/lang/Enum;
.source "ShareMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/ShareMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

.field public static final enum MUSIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

.field public static final enum PIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

.field public static final enum TITLE:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

.field public static final enum VIDEO:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    const-string/jumbo v1, "TITLE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->TITLE:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    new-instance v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    const-string/jumbo v1, "PIC"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->PIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    new-instance v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->VIDEO:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    new-instance v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    const-string/jumbo v1, "MUSIC"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->MUSIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    sget-object v1, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->TITLE:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->PIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->VIDEO:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->MUSIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->$VALUES:[Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->$VALUES:[Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    return-object v0
.end method
