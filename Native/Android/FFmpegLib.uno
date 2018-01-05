using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Scripting;

using Uno.Compiler.ExportTargetInterop;
[Require("Gradle.Dependency","compile('com.writingminds:FFmpegAndroid:0.3.2')")]
[Require("Gradle.Repository","mavenCentral()")]
[ForeignInclude(Language.Java, "com.github.hiteshsondhi88.libffmpeg.FFmpeg")]
[ForeignInclude(Language.Java, "com.github.hiteshsondhi88.libffmpeg.FFmpegLoadBinaryResponseHandler")]
[ForeignInclude(Language.Java, "com.github.hiteshsondhi88.libffmpeg.FFmpegExecuteResponseHandler")]
[ForeignInclude(Language.Java, "com.github.hiteshsondhi88.libffmpeg.exceptions.FFmpegCommandAlreadyRunningException")]
[ForeignInclude(Language.Java, "com.github.hiteshsondhi88.libffmpeg.exceptions.FFmpegNotSupportedException")]
public class FFmpegLib : NativeModule
{
	public FFmpegLib()
	{
		AddMember(new NativeFunction("commands", (NativeCallback)Commands));
	}

	static object Commands(Fuse.Scripting.Context c, object[] args)
	{
		var arg = args[0] as string;
		return Commands(arg);
	}


	[Foreign(Language.Java)]
	static extern(Android) string Commands(string commands)
	@{
		
		String message = commands;
		final android.app.Activity context = com.fuse.Activity.getRootActivity();
		FFmpeg ffmpeg = FFmpeg.getInstance(context);

		try{
			ffmpeg.loadBinary(new FFmpegLoadBinaryResponseHandler(){
			@Override
				public void onSuccess(){
					//message = "success";
				}

				@Override
				public void onFailure(){
					//message = "fail";
				}
				@Override
				public void onStart(){
					// Do nothing
				}

				@Override
				public void onFinish(){
					
				}
			});
		}catch(FFmpegNotSupportedException e){
			//message = "not supported";
			//android.util.Log.e("not supported",e);
		}

		try {
			String[] cmd = commands.split(" ");
            ffmpeg.execute(cmd, new FFmpegExecuteResponseHandler(){

                @Override
                public void onStart(){

                }

                @Override
                public void onProgress(String data){
                    //message = data;
					android.util.Log.d("execute onProgress",data);
                }

                @Override
                public void onFailure(String data){
                    //message = data;
					android.util.Log.d("execute onFailure",data);
                }

                @Override
                public void onSuccess(String data){
                    //message = data;
					android.util.Log.d("execute onSuccess",data);
                }

                @Override
                public void onFinish(){
                    
                }
            });
        } catch (FFmpegCommandAlreadyRunningException e){
            //message = "error";
			//android.util.Log.e("execute onError",e);
        }

		//message = ffmpeg.getLibraryFFmpegVersion();
		return message;
	@}

	static extern(!Android) string Commands(string commands)
	{
		return ("Not supported on this platform. Your command - "+commands);
	}
}