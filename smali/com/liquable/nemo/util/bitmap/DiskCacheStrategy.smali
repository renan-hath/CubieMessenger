.class public interface abstract Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final NONE:Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;->INSTANCE:Lcom/liquable/nemo/util/bitmap/NoneDiskCacheStrategy;

    sput-object v0, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->NONE:Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    return-void
.end method


# virtual methods
.method public abstract compress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z
.end method

.method public abstract getDiskKey()Ljava/lang/String;
.end method
