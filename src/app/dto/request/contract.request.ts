import { IsDefined, IsNotEmpty, IsNumberString } from 'class-validator';

export class ContractCreateRequest {
  @IsDefined()
  @IsNotEmpty()
  name: string;

  @IsDefined()
  @IsNotEmpty()
  symbol: string;

  @IsDefined()
  @IsNotEmpty()
  @IsNumberString()
  supply: string;
}

export class ContractRequest {
  @IsDefined()
  address: string;
}
