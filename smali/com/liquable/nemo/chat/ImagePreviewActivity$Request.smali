.class final enum Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;
.super Ljava/lang/Enum;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

.field public static final enum CAMERA:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

.field public static final enum EDIT:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

.field public static final enum GALLERY:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

.field public static final enum SELECT_RECEIVERS:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

.field public static final enum VIDEO_PREVIEW:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    const-string/jumbo v1, "EDIT"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->EDIT:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 81
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    const-string/jumbo v1, "GALLERY"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->GALLERY:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 82
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    const-string/jumbo v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->CAMERA:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 83
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    const-string/jumbo v1, "SELECT_RECEIVERS"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->SELECT_RECEIVERS:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 84
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    const-string/jumbo v1, "VIDEO_PREVIEW"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->VIDEO_PREVIEW:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->EDIT:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->GALLERY:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->CAMERA:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->SELECT_RECEIVERS:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->VIDEO_PREVIEW:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->$VALUES:[Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->$VALUES:[Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    return-object v0
.end method
