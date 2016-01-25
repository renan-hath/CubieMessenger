.class final enum Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;
.super Ljava/lang/Enum;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "From"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

.field public static final enum CAMERA:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

.field public static final enum CHAT:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

.field public static final enum DETECTED_EXTERNAL_IMAGE:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

.field public static final enum EXTERNAL:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

.field public static final enum MAIN:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    const-string/jumbo v1, "CHAT"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->CHAT:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    const-string/jumbo v1, "MAIN"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->MAIN:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    const-string/jumbo v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->EXTERNAL:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    const-string/jumbo v1, "CAMERA"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->CAMERA:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    const-string/jumbo v1, "DETECTED_EXTERNAL_IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->DETECTED_EXTERNAL_IMAGE:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->CHAT:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->MAIN:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->EXTERNAL:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->CAMERA:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->DETECTED_EXTERNAL_IMAGE:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->$VALUES:[Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->$VALUES:[Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    return-object v0
.end method
