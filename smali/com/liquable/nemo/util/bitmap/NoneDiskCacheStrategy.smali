.class final enum Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;
.super Ljava/lang/Enum;
.source "DiskCacheStrategy.java"

# interfaces
.implements Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;",
        ">;",
        "Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

.field public static final enum INSTANCE:Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;->INSTANCE:Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    sget-object v1, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;->INSTANCE:Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;->$VALUES:[Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;->$VALUES:[Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    invoke-virtual {v0}, [Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    return-object v0
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDiskKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
