.class public final Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;
.super Ljava/lang/Object;
.source "FeatherContentProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/providers/FeatherContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionsDbColumns"
.end annotation


# static fields
.field private static mContentIdUriBase:Landroid/net/Uri;


# direct methods
.method static getContentIdUriBase(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->mContentIdUriBase:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 444
    invoke-static {p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->init(Landroid/content/Context;)V

    .line 446
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->mContentIdUriBase:Landroid/net/Uri;

    return-object v0
.end method

.method public static getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->getContentIdUriBase(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uuid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sessions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->mContentIdUriBase:Landroid/net/Uri;

    .line 440
    return-void
.end method
