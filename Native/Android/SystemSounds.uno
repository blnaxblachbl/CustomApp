using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Scripting;

using Uno.Compiler.ExportTargetInterop;
[Require("Gradle.Dependency","compile('com.writingminds:FFmpegAndroid:0.3.2')")]
[Require("Gradle.Repository","mavenCentral()")]
[ForeignInclude(Language.Java, "com.github.hiteshsondhi88.libffmpeg.FFmpeg")]
public class SystemSounds : NativeModule
{
	public SystemSounds()
	{
		AddMember(new NativeFunction("version", (NativeCallback)Version));
	}

	static object Version(Fuse.Scripting.Context c, object[] args)
	{
		var arg = args[0] as string;
		return Version(arg);
	}


	[Foreign(Language.Java)]
	static extern(Android) string Version(string version)
	@{
		final android.app.Activity context = com.fuse.Activity.getRootActivity();
		context.runOnUiThread(new Runnable(){
			public void run(){
                FFmpeg ffmpeg = FFmpeg.getInstance(context);
				ffmpeg.getLibraryFFmpegVersion();
            }
			/*try {
				// to execute "ffmpeg -version" command you just need to pass "-version"
				ffmpeg.execute(version, new ExecuteBinaryResponseHandler() {
					@Override
					public void onStart() {
						genMessage = "Proccess started";
					}

					@Override
					public void onProgress(string message) {
						genMessage = message;
					}

					@Override
					public void onFailure(string message) {
						genMessage = message;
					}

					@Override
					public void onSuccess(string message) {
						genMessage = message;
					}

					@Override
					public void onFinish() {
						genMessage = "Process finished";
					}
				});
			} catch (FFmpegCommandAlreadyRunningException e) {
			// Handle if FFmpeg is already running
				return ("errrrrrrror" + e);
			}
			return genMessage*/
        });
		return "ok";
	@}

	static extern(!Android) string Version(string version)
	{
		return ("Not supported on this platform. Your command - "+version);
	}
}