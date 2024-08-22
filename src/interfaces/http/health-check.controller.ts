import { Request, Response } from 'express';
import { HealthCheckUseCase } from '../../application/use-cases/health-check.use-case';

export class HealthCheckController {
  private healthCheckUseCase: HealthCheckUseCase;

  constructor(healthCheckUseCase: HealthCheckUseCase) {
    this.healthCheckUseCase = healthCheckUseCase;
  }

  public getHealth(req: Request, res: Response): void {
    const healthStatus = this.healthCheckUseCase.execute();
    res.status(200).json(healthStatus);
  }
}
