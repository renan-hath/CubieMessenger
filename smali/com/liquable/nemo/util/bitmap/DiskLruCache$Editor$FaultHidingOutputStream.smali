.class Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    .line 103
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->access$002(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->access$002(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->access$002(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->access$002(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
