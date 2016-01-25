.class public final Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/bitmap/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p2, "entry"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p2, "x1"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$002(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->completeEdit(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$100(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V

    .line 157
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->completeEdit(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$100(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    const/4 v1, 0x1

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->completeEdit(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$100(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 177
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$300(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 189
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$500(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const/4 v0, 0x0

    monitor-exit v1

    .line 192
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 207
    :cond_0
    :try_start_1
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;
    invoke-static {}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$700()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    invoke-static {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    return-void

    .line 220
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
