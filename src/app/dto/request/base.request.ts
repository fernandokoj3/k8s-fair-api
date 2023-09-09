import { IsAuthenticate } from '@/middlewares/custom.validation';

export class BaseToken {
  // @IsDefined()
  // @IsNotEmpty()
  @IsAuthenticate()
  authorization: string;
}
