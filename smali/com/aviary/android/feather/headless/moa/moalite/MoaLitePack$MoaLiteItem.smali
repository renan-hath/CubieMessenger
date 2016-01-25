.class public Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
.super Ljava/lang/Object;
.source "MoaLitePack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoaLiteItem"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private ref:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public loadContent(Ljava/io/File;Ljava/io/OutputStream;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    .local v0, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->loadContent(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1

    return v1
.end method

.method public loadContent(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p1, p2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public loadContentFromZip(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v0, "zip":Ljava/util/zip/ZipInputStream;
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->readFileFromZip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v1

    return v1
.end method

.method setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->displayName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->ref:Ljava/lang/String;

    .line 58
    return-void
.end method
